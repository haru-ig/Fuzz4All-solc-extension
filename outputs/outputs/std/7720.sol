pragma solidity ^0.8.0;
contract EquivalentMutated4 {
        uint8[] c;
        function() public {
                c.push(37);
        }
        function () public pure {
                require(msg.data.length!= 0);
        }
}
