pragma solidity ^0.8.0;
modifier whileNotStopped2{
    require(!stopped, "Contract has been stopped");
    _;
}
contract Mutator3{
    uint256 internal a;
    uint256 internal b;
    bool internal stopped = false;
    function stop() public {
        stopped = true;
    }
    function Increment2(uint256 a, uint256 b) public whileNotStopped2{
        if (b == 0) {
            a = 0;
            b = a;
            return;
        }
        b = a + (b-1);
    }
}

pragma solidity ^0.8.0;
contract Mutator4{
    uint256 internal a;
    uint256 internal b;
    bool internal stopped = false;
    function stop() public {
        stopped = true;
    }
    function Increment2(uint256 a, uint256 b) public whileNotStopped2{
        if (b == 0) {
            a = 0;
            b = a;
            return;
        }
        b = a + (b-1);
    }
}

pragma solidity ^0.8.0;
contract Doubler{

    address private owner;
    uint256 constant decimalPoint = 10 ** 18;

    constructor(address _owner) {
        owner = _owner;
    }


    function doubler(uint256 _value) returns (uint256){
        uint256 a = _value/decimalPoint;
        a = a + decimalPoint;
        return a/decimalPoint;
    }

    function double(uint8 x)
