pragma solidity ^0.8.0;
contract Test1865II {
    uint16 x = 2;

    function set(uint16 _numbers) public {
        x = _numbers;
        x = 3;
    }
    uint test(uint _val) public view returns (uint) {
        uint[] memory a = [10, 20, 30, 40, 50];
        return a[_val];
    }
}
