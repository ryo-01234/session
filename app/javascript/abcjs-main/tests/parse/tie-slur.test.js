describe("Tie Slur", function () {
	var abcMultipartTie = 
		"X:1\n" +
		"%%staffwidth 200\n" +
		"M:C\n" +
		"K:E\n" +
		"[V:T1] G8-|\n" +
		"[V:B1] c8-|\n" +
		"[V:T1] G8-|\n" +
		"G8||\n" +
		"[V:B1] c8-|\n" +
		"c8||\n"

	var expectedMultipartTie = [
		{line: 0, staff: 0, startTie: {}, endTie: undefined},
		{line: 0, staff: 1, startTie: {}, endTie: undefined},
		{line: 1, staff: 0, startTie: {}, endTie: true},
		{line: 1, staff: 1, startTie: {}, endTie: true},
		{line: 2, staff: 0, startTie: undefined, endTie: true},
		{line: 2, staff: 1, startTie: undefined, endTie: true},
	]

	var abcMultipartChordTie = 
		"X:1\n" +
		"%%staffwidth 200\n" +
		"M:C\n" +
		"K:E\n" +
		"[V:T1] [GB]8-|\n" +
		"[V:B1] [ce]8-|\n" +
		"[V:T1] [GB]8-|\n" +
		"[GB]8||\n" +
		"[V:B1] [ce]8-|\n" +
		"[ce]8||\n"

		var expectedMultipartChordTie = [
			{line: 0, staff: 0, startTie: {}, endTie: undefined},
			{line: 0, staff: 0, startTie: {}, endTie: undefined},
			{line: 0, staff: 1, startTie: {}, endTie: undefined},
			{line: 0, staff: 1, startTie: {}, endTie: undefined},
			{line: 1, staff: 0, startTie: {}, endTie: true},
			{line: 1, staff: 0, startTie: {}, endTie: true},
			{line: 1, staff: 1, startTie: {}, endTie: true},
			{line: 1, staff: 1, startTie: {}, endTie: true},
			{line: 2, staff: 0, startTie: undefined, endTie: true},
			{line: 2, staff: 0, startTie: undefined, endTie: true},
			{line: 2, staff: 1, startTie: undefined, endTie: true},
			{line: 2, staff: 1, startTie: undefined, endTie: true},
		]

	var abcMultipartOneStaffChordTie = 
		"X:1\n" +
		"%%staffwidth 200\n" +
		"%%staves (T1 B1)\n" +
		"M:C\n" +
		"K:E\n" +
		"[V:T1] [GB]8-|\n" +
		"[V:B1] [ce]8-|\n" +
		"[V:T1] [GB]8-|\n" +
		"[GB]8||\n" +
		"[V:B1] [ce]8-|\n" +
		"[ce]8||\n"

		var expectedMultipartOneStaffChordTie = [
			{line: 0, staff: 0, startTie: {}, endTie: undefined},
			{line: 0, staff: 0, startTie: {}, endTie: undefined},
			{line: 0, staff: 0, startTie: {}, endTie: undefined},
			{line: 0, staff: 0, startTie: {}, endTie: undefined},
			{line: 1, staff: 0, startTie: {}, endTie: true},
			{line: 1, staff: 0, startTie: {}, endTie: true},
			{line: 1, staff: 0, startTie: {}, endTie: true},
			{line: 1, staff: 0, startTie: {}, endTie: true},
			{line: 2, staff: 0, startTie: undefined, endTie: true},
			{line: 2, staff: 0, startTie: undefined, endTie: true},
			{line: 2, staff: 0, startTie: undefined, endTie: true},
			{line: 2, staff: 0, startTie: undefined, endTie: true},
		]

	it('multipart-tie', function() {
		doParseTest(abcMultipartTie, expectedMultipartTie)
	})

	it('multipart-chord-tie', function() {
		doParseTest(abcMultipartChordTie, expectedMultipartChordTie)
	})

	it('multipart-one-staff-chord-tie', function() {
		doParseTest(abcMultipartOneStaffChordTie, expectedMultipartOneStaffChordTie)
	})

	function doParseTest(abc, expected) {
		var visualObj = abcjs.renderAbc("paper", abc, {});
		var actual = []
		for (var i = 0; i < visualObj[0].lines.length; i++) {
			var line = visualObj[0].lines[i]
			for (var j = 0; j < line.staff.length; j++) {
				var staff = line.staff[j]
				for (var k = 0; k < staff.voices.length; k++) {
					var voice = staff.voices[k]
					for (var ii = 0; ii < voice.length; ii++) {
						var elem = voice[ii]
						if (elem.pitches) {
							for (var jj = 0; jj < elem.pitches.length; jj++) {
								var pitch = elem.pitches[jj]
								actual.push({line: i, staff: j, startTie: pitch.startTie, endTie: pitch.endTie})
							}
						}
					}
				}
			}
		}
		console.log(actual)
		chai.assert.deepStrictEqual(actual, expected);
	}
})
