pragma solidity ^0.8.0;
contract SafeMath {


  function isNot(uint256 _a, uint256 _b) internal pure returns (bool) {
    (bool a, bool b) = (bool(_a), bool(_b));

    if (!b) {
      return a;
    }

    return a &&!b;
  }



  function isLessThan(uint256 _a, uint256 _b) internal pure returns (bool) {
      (bool a, bool b) = (bool(_a), bool(_b));

      if (a) {
      return!b || isLessThan(b, _b);
    }
    require(!b, "Math: isLessThan returned false");
    return a;
  }



  function isLessThanOrEqualTo(uint256 _a, uint256 _b) internal pure returns (bool) {
    (bool a, bool b) = (bool(_a), bool(_b));

    if (a) {
    return!b || isLessThanOrEqualTo(b, _b);
    }
    require(!b, "Math: isLessThanOrEqualTo returned false");
    return true;
  }


  function isGreaterThan(uint256 _a, uint256 _b) internal pure returns (bool) {
    (bool a, bool b) = (bool(_a), bool(_b));

    if (a) {
    return b || isGreaterThan(b, _b);
    }
    require(!b, "Math: isGreaterThan returned false");
    return a;
  }



  function isGreaterThanOrEqualTo(uint256 _a, uint256 _b) internal pure returns (bool) {
    (bool a, bool
