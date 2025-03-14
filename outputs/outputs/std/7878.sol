pragma solidity ^0.8.0;
contract Array {
    uint8 data[8];
    function push(uint8 dataIn) public {
        data[data.length] = dataIn;
        data.length++;
    }
    function read() public view returns (uint8)
    {return data[data.length - 1];}
}



pragma solidity ^0.8.0;
contract Example18_MemoryContract is Memory {
    uint8 private _value = 17;


    function write(uint64 a) public {
        uint64 a_int = uint64(a);
        write(uint64(a_int), msg.sender);
    }
    function read() public view returns (uint64)
    {uint64 i = uint64(read(msg.sender));
    return uint64(i * 2);}
}


pragma solidity ^0.8.0;
contract Example19_ArrayContract {
    address[] private _myArray;
    function push(uint64 dataIn) public {
        uint64 a = uint64(dataIn);
        data.push(a);
        write(uint64(msg.sender), a);
    }
    function read() public view returns (uint64)
    {address data = read(msg.sender);
    uint64 a = uint64(data);
    return a;}
    function get() public view returns (uint8)
    {uint8 c = uint8(read(msg.sender));
    return c;}
}

pragma solidity ^0.8.0;
interface IArrayMemoryContract {
    function push(uint64 a);
    function read() payable view returns (uint64);
    function get() view returns (uint8);
}
pragma solidity ^0.8.0;
contract Example20_Example18_Array_MemoryContract is IArrayMemoryContract {
    uint8 private _value = 17;
    uint8[] private data;


    function push(uint64 a) public
    {uint64 a_int = uint64(a);
    uint8 a_int_8 = uint8(a_int);
    data.push(a_int_8);
    write(uint64(a_int_8), msg.sender);
    }
    function read() public view returns (uint64)
    {uint8 a_int_8 = uint8(read(msg.sender));
    uint64 a_int = uint64(a_int_8);
    return uint64(a_int * 2);}
    function get() public view returns (uint8)
    {return uint8(read(msg.sender));}
}
contract Example21_Example19_Array_MemoryContract is IArrayMemoryContract {
    address[] private readonly
