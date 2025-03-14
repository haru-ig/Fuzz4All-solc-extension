pragma solidity ^0.8.0;
contract MutatedCurrent { function testCurrent() public returns (bytes32[][][][] memory) {
} }
`
    )
  )

.setArtifactName('MutatedPrevious')
.setArtifactType('CONTRACT')
.setArtifactSource()
.setSourceCode(
    `pragma solidity ^0.8.0;
contract MutatedPrevious { function testPrevious() public returns (bytes32[][][][] memory) {
  return [
    [
      [],
      [],
      []
    ],
    [
      [],
      [],
      []
    ],
    [
      [],
      [],
      []
    ],
    [
      [],
      [],
      []
    ]
  ];
} }
`
  )
.setSourceHash(
    '0xe9844f7c75c368c83bb7a939c1a77d2a478b1ea96e693894c3b92b6f9aa012ce'
  )
}
