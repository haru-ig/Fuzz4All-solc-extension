pragma solidity ^0.8.0;
contract test31 {
    function test() public pure
    {
        (bool b, uint8 a) = (true, 1);
    }
}
pragma solidity ^0.8.0;
contract test32 {
    function test() public pure
    {
        (bool b, uint16 a) = (true, 1);

        if (b) a;

        (uint c) = (1, true);
        if (b) a;
    }
}
pragma solidity ^0.8.0;
contract test33 {
    function test() public pure
    {
        (bool b, uint a) = (true, 1);

        if (b) a;

        (uint16 c) = (1, true);
        if (b) a;
    }
}
