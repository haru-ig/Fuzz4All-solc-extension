pragma solidity ^0.8.0;
contract Test {
    function main() public pure {
    	bytes memory test = hex"5080516000";
        Test.isTrue(byte(test));
        Test.isTrue(bytes1(test));
        Test.isTrue(bytes2(test));
    }
}
pragma solidity ^0.8.0;
library Test {
    function isTrue(bool _x) pure public returns(uint) { if (_x) return(1); return(0); }
}
pragma solidity ^0.8.0;
contract Test {
    function isTrue(bool _x) pure public returns(uint) { if (_x) return(1); return(0); }
}
