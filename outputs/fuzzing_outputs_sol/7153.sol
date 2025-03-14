pragma solidity ^0.8.0;
interface IExample5 {
    function foo(uint8 a, string b) external;
}
contract Example5 is IExample5{
    address payable addr;
    bytes32 constant SAFETY = keccak256("hello world");
    uint8 _a;
    string memory _b;
    function foo(uint8 a, string memory b) public onlyMe{
        _a = a;
        _b = b;
        uint val1 = a + uint(keccak256(_b));
        bytes32 val2;
        uint[] memory val3;
        bytes memory val4;
        bytes5 val5;
        uint4 val6;
        _a = a;
        _b = b;
        val3[0] = a;
        val[0] = a;
        val3 = val3;
        val[0] = a;
        val4 = val4;
        val[0] = a;
        val5 = val5;
        val[0] = a;
        val6 = val6;
        setCheckFor(msg.sender);
    }
    function getCheckFor() public view returns (bytes32) {
        if (_a == 0 && bytes.compare(_b,_b) < 0) {
            uint val1 = 1;
            val1 = uint(keccak256(_b));
        }
        uint val3 = 1;
        return (checkFor[msg.sender] == SAFETY || val
