pragma solidity ^0.8.0;
contract Emulator4{
    uint x;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        x;
        (x+y);
        (x+y);
        (x+y);
        write();
        return ret;
    }
    function write() public pure {}
}
contract Deployments {
    event LogEvent(string);
    function trigger(uint val){
        LogEvent(uint2str(val));
    }
    function strcat(bytes memory a, bytes memory b) public pure returns(bytes memory){
        return bytes(a) ++ b;
    }
    function uint2str(uint num) public pure returns (string memory){
        if (num == 0) return "0";

        uint i = num;

        uint j = 0;
        uint len = 0;
        while (i!= 0){
            len++;
            i /= 10;
        }
        bytes memory bstr = new bytes(len);
        while (i!= 0){
            bstr[j++] = byte(48 + i % 10);
            i /= 10;
        }
        return string(bstr);
    }
}
