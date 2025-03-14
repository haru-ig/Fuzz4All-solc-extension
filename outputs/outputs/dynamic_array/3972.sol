pragma solidity ^0.8.0;
contract C {
    struct S {}
    S s;
    constructor() public {
        {
            uint[] memory array = new[]
                uint[](666);

            array[0] = 2;
            array.length = 3;
        }
        s = S(array);
    }
}
pragma solidity ^0.8.0;
contract C {
    address[] public accounts;
    constructor() public {
        accounts.push(msg.sender);
    }
}
pragma solidity ^0.8.0;
contract C {
    address[] public accounts = new address[](0);
    constructor() public {
        accounts.push(msg.sender);
    }
}
