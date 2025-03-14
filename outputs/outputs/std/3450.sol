pragma solidity ^0.8.0;
interface IBaseA {
    function doSomething() public;
}
pragma solidity ^0.8.0;
contract A is IBaseA {
    uint x;
    function doSomething() public {
        x = 1;
    }
}
pragma solidity ^0.8.0;
contract B is IBaseA {
    uint x;
    function doSomething() public {
        x = 2;
    }
}
pragma solidity ^0.8.0;
contract C is IBaseA {
    uint x;
    function doSomething() public {
        x = 3;
    }
}
pragma solidity ^0.8.0;
