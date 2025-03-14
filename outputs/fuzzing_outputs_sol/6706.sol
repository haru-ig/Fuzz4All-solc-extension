pragma solidity ^0.8.0;
contract Caller {
    function paymsg(address _to, uint _amount) public {



        uint _value;
        (bool success, _value ) = address(_to).call{value:_amount}("");
        require(success, "failed");
        assert(_value >= _amount);
    }
}
