pragma solidity ^0.8.0;
contract ModifierContract {
  function modifier() public {}
}
contract ArrayContract {
    function minArray(uint256[] memory i) internal pure {
        uint256 min = i[0];
        for (uint256 i = 1; i < i.length; i++) {
            if (i < min) {
                min = i;
            }
        }
        return min;
    }
}
contract ArrayContract {

}
