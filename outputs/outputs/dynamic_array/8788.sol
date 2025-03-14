pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays4 {
  uint[][][4][1] public arrayofArrays;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays5 {
  uint[][3][2] public arrayofArrays;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays6 {
  uint[5][3] public arrayofArrays;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays7 {
  uint[3][7][4] public arrayofArrays;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays8 {
  uint[2][][][] public arrayofArrays;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays9 {
  uint x;
  uint y;
  uint z;
  uint w;
  function f() public {
		x = x && [z, y][0];
  }
}
