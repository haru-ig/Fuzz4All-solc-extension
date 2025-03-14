pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names_id = 0x2;
    uint names2_id = 0x3;
    uint namelength = 0x4;
    uint[2] names;
    function create() public {
        names[0] = 0x401;
        names[1] = 0x201;





        names[1] = 0xBEEF76E710D447FCA13971E4FEE94A8CADE7B1C33D639B8B7597E1354B00837;





    }
    function getname() public view returns (uint[]) {
        (, uint namelength,,) = this.initializeData_();
        uint[] memory result = new uint[](namelength);
        for (uint i = 0; i < namelength; i++) {
            result[i] = names[i];
        }
        return result;
    }
}
