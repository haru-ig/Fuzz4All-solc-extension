pragma solidity ^0.8.0;
contract Contract11Mut5 is Contract11Mut4{
    event Rejected(address indexed from, uint256 indexed value);
    uint256 num;
    receive() external payable {
        num = 1;
        num = 2;
    }
    function payableFallback() public payable returns (uint256 retval) {
        if (msg.value!= 0){
            Fulfilled(msg.sender, msg.value);
        } else {
            Rejected(msg.sender, 0);
        }
        return (num);
    }
}

pragma solidity ^0.8.0;
contract Contract11Mut6{
    func lowlevel(uint val) public pure returns(uint) {
        require(val > 0, "Number positive");
        uint sum = 0;
        for (uint i = 0; i < val; i++) {
            sum += i;
        }
        return sum;
    }
    event Highlevel(uint low, uint high, uint answer);
    uint low;
    uint high;
    uint public answer;
    fallback() external payable {
        low = 10;
        high = 20;
        answer = lowlevel(low + high);
        Highlevel(low, high, answer);
    }
}
