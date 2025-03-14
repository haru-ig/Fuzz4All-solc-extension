pragma solidity ^0.8.0;
contract C {
    uint public x;
    mapping (uint => uint) mapping2;
    function setX(uint v) public {
        x = v;
    }
}

pragma solidity ^0.8.0;
contract X {



    function function1(bytes1 i) public;
}<fim_middle>pragma solidity ^0.8.0;
contract C {
    mapping (uint => X) xMap;
    constructor() {

        X memory X1;
        X1.function1('Hello');
        xMap[4] = X1;


        X memory X;
        X.function1('Test');


        xMap[0] = X;
    }
}

pragma solidity ^0.8.0;

contract TestContract {

    assembly {
        let(gas) X := xMap(0)
        X.function1('Hi from TestContract ')
    }
}
pragma solidity ^0.8.0;

contract C {
    function() public {
        revert("No inline assembly");
    }
}
