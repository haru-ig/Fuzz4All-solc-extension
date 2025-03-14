pragma solidity ^0.8.0;
contract ModifierEquivalence {
        modifier foo () {
        }
}
contract Caller {
        uint256 public counter;
        address public contract1;
        address public contract2;
        address public fallbackFunction;

        string _msg;
        bytes32 a;
        uint256 b;
        address externalC;
        uint256 internalC;
        modifier externalTest () {
                fallbackTest: {
                        contract1: {

                                fallback () external returns (uint) {
                                        counter++;
                                        while (true) ;
                                        return 1;
                                }

                                return 1;
                        }
                }
        }
        constructor (string memory _msg) {
                msg.data;
                a;
        }

        function setExternalContract(address externalC) public externalTest {

        }

        function setFallback(address newFallback) public externalTest {
                fallbackFunction = newFallback;
        }

        function printMsg () public view returns (string memory result) {
                bytes20 aValueBytes20 (address);
        }

        function printStruct (Caller structCaller) public {
        }

        function printUint (uint x) public view returns (uint256 result) {
                internalC = x;
        }
}
