pragma solidity ^0.8.0;
contract Mutator {
    bool called1;
    bool c_bool;
    function a() public {
        if (c_bool)
            throw;
        else
            c_bool = true;
        while (true) {
            called1 = false;
            require(!called1);
        }
    }
    function b() public payable {
        while (true) {
            called1 = false;
            bool r = (msg.value + 1) % 2 == 0;
            if (r) {
                require(!called1);
                require(!c_bool);
                c_bool = true;
                break;
            }
        }
        while (true) {
            require(msg.value + 2 - 1 == 2 * (msg.value + 1));
        }
        if (true) {
            if (msg.value > 1) {
                payable(0x8011d2464751823e808aebe9b47571b12b8b77db);
                revert();
            } else {revert();}
        }
        if (true) {
            payable(Mutator());
            revert();
            while(true) {
                require(msg.value + 3 - 3 == 2 * (msg.value + 1));
                break;
            }
        }
    }
    function c() public {
        while (true) {
            bool r = (msg.value + 3) % 2 == 0;
            if (r) {
                require(!c_bool);
                c_bool = true;
                break;
            }
        }
    }
    modifier m1 {
        if (true) {
            if  (c_bool)
                revert();
        }
        _;
    }
    modifier m2 {
        require(true);
        if (true) {
            while (true) {
                require(msg.value - 1 + 3 - 3 == 2 * (msg.value - 1));
            }
        }
        _;
    }
    modifier m3 {
        require(true);
        if (true) {
            while (true) {
                require(msg.value + 1 + 3 - 3 == 2 * (msg.value + 1));
            }
        }
        _;
    }
}
