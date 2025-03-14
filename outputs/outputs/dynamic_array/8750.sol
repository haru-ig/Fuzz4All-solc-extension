pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_184 {
    uint public x;
    uint public y;

     mapping (uint => int) private testMap;

    modifier onlyPublicModifiers() public {
      function privateMethod() private {}
      privateMethod();
    }

    constructor(uint initialX, uint initialY) {
        x = initialX;
        y = initialY;
        testMap[0] = 274;
    }

    function getTest() public view returns (uint result) {
        result = testMap[146];
    }

    function setTest(int value) public returns (uint) {
        require(x == 0, 'canBeSetOnlyOnce');
        testMap[146] = value;
        return value;
    }

    function updateXAndReturnX() public returns (uint) {
        x = x + 1;
        return x;
    }

    function updateXAndReturnX_1(uint value) public returns (uint) {
        uint previousX = x;
        x += value;
        require(previousX + value == x, 'cannotAdd');
        return previousX + value;
    }

    function subtractY() public returns (uint) {
        y -= 10;
        return y;
    }

    function subtractY_1(uint value) public returns (uint) {
        uint previousY = y;
        y -= value;
        require(value == y, 'cannotAdd');
        return previousY + value;
    }

    function subtractToZero(uint from) public returns (uint) {
        return subtractToZero_1(from);
    }

    function subtractToZero_1(uint from) public returns (uint) {
        uint previousY = y;
        y -= from;
        require(y == 0,'mustSubtractFromZero');
        return previousY + from;
    }

    function addToZero() public returns (uint) {
        return addToZero_1();
    }

    function addToZero_1() public returns (uint) {
        uint previousY = y;
        y *= 2;
        require(y == 0, 'cannotDivideByZero');
        return previousY + 2 * from;
    }

}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_185 {
    uint public x;
    uint public y;


    mapping (uint => int) private testMap;

    modifier onlyPublicModifiers() public {
      function privateMethod() private {}
      privateMethod();
    }

    constructor(uint initialX, uint initialY) {
        x = initialX;
        y = initialY;
        testMap[256]
