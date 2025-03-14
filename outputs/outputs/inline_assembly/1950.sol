pragma solidity ^0.8.0;
contract MyY {

    struct myStruct {
        uint256 x;
    }

    uint256 public constant x = 123;
    uint256 public constant y = 60;
    myStruct public constant m;
    bool public constant isInitialized = true;

    function myy(myStruct memory s, uint256 i) public payable {
        if(i <= 500 && m.x > 50) s.x = 0;
    }

    function o(uint256 x) public returns(uint256) {
        if(!isInitialized) return m.x * 2 + x;
        require(m.x <= x);
        m.x = m.x - x;
        for (uint256 i = m.x; i > x; i--) {
            for (uint256 j = x-1; j < i; j++, m.isO()) m.x = m.x / (1+i) - 1 + i;
            m.x++;
        }
        return m.x * 2 + x;
    }
}`);
