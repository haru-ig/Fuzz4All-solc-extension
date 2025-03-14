pragma solidity ^0.8.0;
contract L45 {
    uint public y;
    constructor() {
        y = 5;
    }
    modifier modifyCalled {
        emit Log();
    }
    function use1() public modifyCalled {
        emit Log();
    }
    function use2() modifier modifyCalled {
        emit Log();
    }
    function use3() public modifyCalled {
        emit Log();
    }
}

pragma solidity ^0.8.0;
contract L46 {
    uint public z;
    constructor(uint Z) {
        z = Z;
    }
    modifier modifyCalled {
        emit Log(z);
    }
    function use1() public modifyCalled {
        emit Log(z);
    }
    function use2() modifier modifyCalled {
        emit Log(z);
    }
    function use3() public payable modifyCalled {
        emit Log(z);
    }
}
