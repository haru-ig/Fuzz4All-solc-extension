pragma solidity ^0.8.0;
contract RevertTestSemanticallyEquivalentArray {
    function add_Array(uint[2][3] memory a)
        public pure
        returns (uint[2][3])
    {
        uint overflow4;
        overflow4--;
        overflow4--;
        uint[2] memory overflow7;
        overflow7--;
        overflow7--;
        uint[2][3] memory overflow8;
        overflow8[0] = overflow7;
        overflow8[1] = overflow7;
        return overflow8;
    }
}
