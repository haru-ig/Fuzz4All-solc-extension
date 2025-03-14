pragma solidity ^0.8.0;
contract S9Mutated10 {
    bool is_active = true;
    constructor() {
    }
    event Log();
    event Test();
    function change() public {
        is_active =!is_active;
    }
    function change2() public {
        is_active =!is_active;
        emit Log();
    }
    function call1() public pure {
        emit Test();
    }
    function call2() public pure {
        emit Test();
        emit Log();
    }
}
contract S10Mutated10 {
    bool is_active;
    constructor() {
        is_active = true;
    }
    event Test();
    event Log();
    function change() public {
        is_active =!is_active;
    }
    function change2() public {
        is_active =!is_active;
        emit Log();
    }
    function call1() public pure {
        emit Test();
    }
    function call2() public pure {
        emit Test();
        emit Log();
    }
}
