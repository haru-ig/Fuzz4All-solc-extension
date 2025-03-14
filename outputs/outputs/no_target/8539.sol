pragma solidity ^0.8.0;
contract Equivalent31 {

    function set2(uint a) internal {
        address addr1;
        address addr2 = addr1++;
        if(msg.sender!= addr2){
            emit Evt(a);
            msg.sender.transfer(0xdeadbeef);
        }
    }
    }
contract Equivalent32 {
    function set2(uint x) public {
        set2_int(x);
        uint y = set2_int(x + 1);
        set2_int(y);
        set2_int(y + 1);
    }

    function set2_int(uint x) internal {
        if(x >= 1000){
            x = 0xfffffffefffffffe;
        }
        if(x < -1000){
            x = 0xfffffffffffffffe;
        }
    }
}
