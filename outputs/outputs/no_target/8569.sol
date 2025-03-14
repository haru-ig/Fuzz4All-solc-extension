pragma solidity ^0.8.0;
contract NonChecked {
    function get(uint a, uint b) public view returns (uint) {
        uint answer = 1 * 10 + b;

        return answer;
    }
    }

pragma solidity ^0.8.0;

contract Compatible {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (answer == a + 1);
    return answer;
}
}
