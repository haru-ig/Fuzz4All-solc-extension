pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public mymap;
    uint mmy;
    uint stored;
    function MutateData() public {
        stored += 7;
        stored -= 7;
        mmy += 7;
        mmy -= 8;
        mymap[15] = 7;
        mmy += 7;
        mmy -= 15;
        require(stored == 8, "FAIL0");
        require(mmy == 14, "FAIL1");
        require(mymap[15] == 6, "FAIL2");
        mymap[9] = 5;
        mymap[14] = 8;
        require(mymap[9] == 5, "FAIL3");
        require(mymap[14] == 6, "FAIL4");
    }
}
