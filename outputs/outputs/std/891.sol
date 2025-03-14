pragma solidity ^0.8.0;
contract Mutate9To16
{
    uint8[] public array;
    function mutate
    (
        uint8
    ) public returns(
        uint8
    )
    {
        return array;
    }
}

pragma solidity ^0.8.0;
contract Mutate6To11
{
    uint8[] public array;
    function mutate
    (
        uint8
    ) public pure
    {
    }
}

pragma solidity ^0.8.0;
contract Mutate11To17
{
    uint8[] public array;
    function mutate
    (
        uint8
    ) public pure
    {
        array = newuint8[](0);
        array.push(uint8(0));
        array.push(uint8(1));
        array = [uint8(11),uint8(14),uint8(17)];
    }
}

pragma solidity ^0.8.0;
contract Mutate9To16
{
    uint8[] public array;
    function mutate
    (
        uint8
    ) public pure
    {
        array = newuint8[](0);
        array.push(uint8(0));
        array.push(uint8(1));
        array = [uint8(9),uint8(10),uint8(11)];
    }
}

pragma solidity ^0.8.0;
contract Mutate6To11
{
    uint8[] public array;
    function mutate
    (
        uint8
    ) public pure
    {
        array = newuint8[](0);
        array.push(uint8(0));
        array.push(uint8(1));
        array = [uint8(6),uint8(7),uint8(8)];
    }
}

program Mutate11To17
{
    constructor() public
    {
        Mutate11To17Instance14 instance = new Mutate11To17Instance14();
        instance.array = [uint8(11),uint8(14),uint8(17)];
        instance.getArray();
        instance.getArray();
        instance.getArray();
        instance.getArray();
        instance.getArray();
        instance.getArray();
        instance.getArray();
        instance.getArray();
