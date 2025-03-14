pragma solidity ^0.8.0;
contract Test {
    uint private test;
    uint256 private counter;
    function setID() public {
        test = test + 1;
        test = test.div(counter).mul(3);
        test = test + counter;
        test = test.mul(10).mod(counter);
        test = test + 1;
        test = test.add(counter);
        test = test.sub(counter);
        test = test.xor(counter);
        test = test.and(counter);
        test = test.or(counter);
        test = test.shl(counter);
        test = test.shr(counter);
        test = test.not();
        test = test - 1;
        test = test / 2;
        test = test / 2;
        test = test.mod(counter);
        test = test.mul(3);
        test = test % 10;
        test = byte(220);
        test = 2**256;
        test = 2**256.div(counter);
        test = 2**256 / 2;
        test = test.toUint();
    }
}
pragma solidity ^0.8.0;
contract Test {
    uint private test;
    uint256 private counter;
    constructor() {
        id = 1;
        counter++;
    }
    function setID() public {
        test = id.add(888);
        test = id.mul(888).div(2);
        test = id.sub(888);
        test = 1.div(counter);
        test = 888.toUint();
        test = counter + 1;
    }
}
