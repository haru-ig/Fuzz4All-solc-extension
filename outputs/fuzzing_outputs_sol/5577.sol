pragma solidity ^0.8.0;
contract semanticallyequivalent_0 gen2
{
    struct Inner
    {
        uint r;
    }

    function m() public view returns (Inner memory) {
        return Inner(0);
    }
}
contract semanticallyequivalent_1 gen2
{
    bool m;

    function m() public view returns (bool,uint) {
        return (m,0);
    }
}
contract semanticallyequivalent_2 gen2
{
    int m;

    function m() public view returns (int) {
        return m;
    }
}
contract semanticallyequivalent_3 gen2
{
    mapping(uint => address) private addresses;

    function m(uint x) public view returns (address) {
        return addresses[x];
    }
}
contract semanticallyequivalent_4 gen2
{
    uint private num;

    function m() public view returns (uint) {
        return num;
    }
}
contract semanticallyequivalent_5 gen2
{
    enum e { x }

    uint private num;

    function m() public view returns (uint) {
        return num;
    }
}
contract semanticallyequivalent_6 gen2
{
    mapping(uint => string) private names;

    function m() public view returns (string) {
        return names[1];
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent_6 solc_gen2
{
    function m() gen2 public view returns (string memory) {
        return names[1];
    }
}

pragma solidity ^0.8.4;
contract semanticallyequivalent_5 solc_gen2
{
    enum e { x }

    uint private num;

    function m() solc_gen2 public view returns (uint) {
        return num;
    }
}
contract semanticallyequivalent_4 solc_gen2
{
    uint private num;

    function m() gen2 public view returns (uint) {
        return num;
    }
}
contract semanticallyequivalent_3 solc_gen2
{
    mapping(uint => address) private addresses;

    function m(uint x) gen2 public view returns (address) {
        return addresses[x];
    }
}
contract semanticallyequivalent_2 solc_gen2
{
    int private m;

    function m() gen2 public view returns (int) {
        return m;
    }
}
contract semantic
