pragma solidity ^0.8.0;
contract Array
{

    uint[] public data = [];
    uint constant INITIAL_CAPACITY = 3;
    mapping(uint => address) public ownedAddress = mapping(uint => address);
    mapping(uint => string) public name;

    function add(uint256 x) public
    {

        require(doesNotContain(x));


        data.push(x);


        new Address().depositAt(x);


        ownedAddress[x] = msg.sender;
    }

    function contains(uint256 elem) public view returns (bool)
    {
        return does contain(elem);
    }

    function doesContain(uint256 elem) public view returns (bool)
    {
        return uint(data.length) <= elem && elem > 0;
    }

    function length() public view returns (uint256)
    {
        return uint(data.length);
    }

    function getName(uint elem) public view returns (string memory)
    {
        return elem >= data?.length? "" : ownedAddress[elem];
    }

    function set(uint elem, string memory _name) public
    {
        name[elem] = _name;
    }

    function toString() public pure returns (string memory a)
    {
        return toString(elements);
    }

    function toString(uint[] memory data) public pure returns (string memory a)
    {
        uint len = data.length;
        if (len < 1) return "";
        uint i;
        string memory s=data[0];
        for (i = 1; i < len; i++) {
            s = s + ", " + data[i];
        }
        return s;
    }



    function ensureDoesNotExist(uint256 x) public
    {

        require(doesNotContain(x));


        add(x);
    }



    function checkExists(uint256 x) public view
    {

        require(doesContain(x));
    }


    function setName(uint256 elem, string memory _name) pure public
    {
        name[elem] = _name;
    }

    function nameLength() public pure returns (uint256)
    {
        return name?.length;
    }




    function getAddress(uint elem) public view returns (address addr)
    {
        checkExists(elem);
        return ownedAddress[elem];
    }
