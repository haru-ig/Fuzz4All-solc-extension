pragma solidity ^0.8.0;
contract Mutator {
address _owner;
uint256 internal constant _max = 1e18;
uint256 internal constant _max_times = 1e4;
uint256 d;
uint256 _total = 0;
uint256 _count = 1;
bool _started = false;
modifier onlyOwner {
        require(msg.sender ==_owner,"Caller is not owner");
        _;
    }

constructor () {
    d = 1;
    _owner = msg.sender;
}
function mutate () public {

    for (var k=0; k<_max_times && (_total+d+k*_max)+100 < _total; k++) {
        if (k>=2) {
            if (_started) {
                d-=2;
            } else {
                d-=1;
                _started=true;
            }
        }
        if ((_total+k*_max)+d < _total+_max) {
            _total +=d;
            _count +=1;
        } else {
            _total = (_total+k*_max)+d;
            _count = 1;
        }
    }
    require(_count<=_max_times,"Too many mutes");
}
}
