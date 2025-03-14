pragma solidity ^0.8.0;
interface I2a  {
    function use() external;
    function use2() external;
}

pragma solidity ^0.8.0;
interface I2b  {
    function use2() external;
}

contract Test  {
    I2a private i2a;
    I2b private i2b;
    constructor() {
        i2a = I2a(address(new I2a()));
        i2b= I2b(address(new I2b()));
    }
    function test2a() public {
        i2a.use();
        i2a.use2();
        i2a.use();
    }
    function test2b() public {
        i2b.use2();
        i2b.use2();
        i2b.use2();
    }
    function test1() public {
        test2a();
        test2b();
    }
}
