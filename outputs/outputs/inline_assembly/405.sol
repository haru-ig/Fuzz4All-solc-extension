pragma solidity ^0.8.0;
contract M12 {
    uint public x;
    event Event0(int256);
    function add(uint i) public {

        x += i;
    }
    function change() public {
        x = 0;
    }
    function access() public view returns (uint i) {

        i = x;
    }
}

pragma solidity ^0.8.0;
contract M10 {
    uint x;

    function modify() public {


        x = x + 1;
    }

    function access() public {

        x = 0;
        Event0.value(1)(x);
        if (1 < x) {
            x = 1;
            return;
        }
    }
}
