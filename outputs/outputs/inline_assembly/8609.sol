pragma solidity ^0.8.0;
contract Modul {
        bool _lock;
        modifier lock(address _account){if(_lock == false){ _lock=true;_account.transfer(address(this).balance);} require(!_lock);}

    function f() public pure lock(msg.sender) {
        uint z = m(100);
        return 1;
    }

    function m(uint x) protected pure returns(uint) {
        return 67 * x;
    }

    function m2() public constant returns(uint){
        if (false == _lock){
            _lock = true;
            return 2;
        }
        return 2;
    }
}
