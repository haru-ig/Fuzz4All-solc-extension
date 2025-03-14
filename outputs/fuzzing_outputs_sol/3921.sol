pragma solidity ^0.8.0;
contract Example11 {
    object contractForMutation {

        address payable _receiver;



        constructor(uint _value) {
            contractForMutation._receiver = payable(_value);
            contractForMutation._receive = address payable.fallback;
        }


        function transferToFallback() external payable {
            _receiver.transfer(msg.value);
        }

        function transferToStorage(uint _num) external payable {
            contractForMutation._num = _num;
        }


        function receive() external payable {
            contractForMutation._num -= msg.value;
        }


        receive() external {}
    }
}
