pragma solidity ^0.8.0;
contract ModifierEquivalence {
        receive() external payable {}
        fallback () external payable {}
}
contract Caller {
        uint storage counter;
        modifier modifierEquivalence {
                uint x = _counter;
                _;
               counter = x;
        }
        modifier modifierEquivalenceMutated {
                uint x = counter;
                _;
                counter = x + 1;
        }
        receive () external payable {
                revert();
        }
        function () payable external {
                counter ++;
        }
        function doCounter() view external returns (uint) {
                return counter;
        }
}
