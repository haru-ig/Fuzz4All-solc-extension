pragma solidity ^0.8.0;
contract Mutator is Ownable {
    uint immutable public old_time;
    uint public time;
    mapping(uint => uint) private constant _state =
    mapping(uint => uint);
    event Update();
    function SetTime(uint _time) public onlyOwner {
        time = _time;
    }



    modifier onlyCurrentTime() {
        require(now >= old_time && time <= now);
        _;
    }
    function SetState(uint _key, uint _val) public onlyCurrentTime {
        _state[_key] = _val;
    }
    function GetState(uint _key) public view returns
    uint {
        return _state[_key];
    }
}


pragma solidity ^0.8.0;
contract Mutator2 is Ownable {
    uint immutable public old_time;
    uint public time;
    uint immutable public max_time = 500000;
    uint public time_used = 0;
    mapping(uint => uint) private constant _state =
    mapping(uint => uint);
    event Update();
    function SetTime(uint _time) public onlyOwner {
        time = _time;
    }


    modifier onlyCurrentTime() {
        require(now >= old_time && time <= now);
        time_used = 0;
        require(time <= max_time, 'ERROR: Current Time Limit Reached');
        _;
    }
    modifier increaseTimeBy(uint _time) {
        time_used += _time;
        require(time_used <= max_time, 'ERROR: Max Time Reached');
        _;
    }

    function SetState(uint _key, uint _val) public onlyCurrentTime {
        _state[_key] = _val;
    }
    function GetState(uint _key) public view returns
    uint {
        return _state[_key];
    }
