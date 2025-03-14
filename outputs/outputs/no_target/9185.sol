pragma solidity ^0.8.0;
contract smarter_abi4 {
    uint256 public constant constant_variable = 2841;
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract smarter_abi3 {
    uint32 public constant constant_variable = 1164125244;

    function constant_function() external pure returns (uint32) {
        return constant_variable;
    }
}
pragma solidity ^0.8.0;
contract smarter_abi2 {
    uint128 public constant constant_variable = 10016678061166837528299716098276865065202407581973;

    function constant_function() external pure returns (uint128) {
        return constant_variable;
    }
}
pragma solidity ^0.8.0;
contract smarter_abi1 {
    uint64 public constant constant_variable = 1414323033346367832861384135721855458151974122834448306896770241433068572098565;

    function constant_function() external pure returns (uint64) {
        return constant_variable;
    }
}
pragma solidity ^0.8.0;
contract smarter_abi0 {
  uint256 public constant constant_variable = 1;

  function constant_function() external pure returns (uint256) {
    return constant_variable;
  }
}
