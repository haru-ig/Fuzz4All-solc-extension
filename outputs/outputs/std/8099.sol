pragma solidity ^0.8.0;
contract Memory8 {

    address owner = msg.sender;
    address[] public adr1;
    uint[] public numbers1;

    bool public value;

    function set() public {
        value = false;
        adr1.push(msg.sender);
        numbers1.push(10);
    }

    function push(uint256 _num) public {
        adr1.push(msg.sender);
        require(!value, "You have already called this");
        numbers1.push(_num);
        value = true;
    }

    function test(uint256 _val) public {
        uint256 x = 0;
        for (uint i = 0; i < 8; i++){
            x += adr1[i];
        }
        x = x + adr1[8];
        x = x + numbers1[8];
    }

    function pull() public returns (address addr, uint256 num){
        require(value, "Value not present");
        uint256 i = adr1.length-1;
        addr = adr1[i];
        while(adr1[i-1] < adr1[i]) {
            i = i - 1;
        }
        for (i = i + 1; i < adr1.length; i++){
            if (adr1[i] == addr)ad;r;a
        }
        num = numbers1[i];
        require(i < adr1.length);
    }
}
