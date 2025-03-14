pragma solidity ^0.8.0;
interface IExample2 {
    function f1(address payable dest, uint256 value) external;
    function isValid() external view returns(bool);
}
contract Example2 is IExample2{
    IExample1 example1 = IExample1(0x60840276fB0c24760753a38a49c8e6c92bb04922);
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    mapping(address => bool) public invalidSender;
    mapping(address => uint256) public invalidValue;
    uint256 constant MIN_VALUE = 0;
    mapping(bytes32 => uint256) public check;
    uint256 constant MAX_VALUE = 2 ** 256;
    uint256 constant INVALID_VALUE = 0xffffffffffffffffffffffffffffffffffffffffffffffff;
    uint256 public numValues = 0;
    uint256 public invalidNumValues = 0;
    function f1 (address payable dest, uint256 value) public {
        check[SAFETY] = validateParams(value);
        example1.setCheckFor(msg.sender);
        invalidSender[msg.sender] = false;
        invalidValue[msg.sender] = false;
        uint256 result = uint256(keccak256(abi.encodePacked("Result: ", value, " ", numValues, " Result")));
        uint256 to = payable(dest).transfer(result);
        require(uint256(to) >= value);
        uint256 count = numValues + 1;
        check[SAFETY + uint256(keccak256(abi.encode(count)))] = count;
    }
    function isValid() public view returns(bool){
        uint256 result = uint256(keccak256(abi.encodePacked("Result: ", numValues, " ", MAX_VALUE, " Result")));
        return msg.sender == example1.getCheckFor() && msg.sender == example1.getCheckFor() && msg.sender == SAFETY && result == uint256
