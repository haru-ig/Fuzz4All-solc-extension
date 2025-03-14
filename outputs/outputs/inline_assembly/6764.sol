pragma solidity ^0.8.0;
contract MixedContactsExample508 {
    event ELog(uint test);
    bool flag0 = true;
    bool test;
    constructor() {
        test = flag0;
        flag0 = false;
    }

    function anotherOperation5() external {
        emit ELog(true);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample509 {
    uint test;
    uint128 test2;
    constructor() {
        test = 1;
        test2 = 0;
    }

    function anotherOperation5() external {
        uint128 sum = test + test2;
        test = 2;
        test2 = sum;
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample510 {
    constructor() {
        while(true) {}
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample511 {
    constructor() {
        uint test2 = 1;
        uint test = 1;
        test = 2;
        test2 = 2;
    }
}
