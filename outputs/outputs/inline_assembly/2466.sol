pragma solidity ^0.8.0;
contract Comp3
{
    uint globalVariable;

    function useGlobalVariable(){
        globalVariable++;
    }

    function increamse() publishes {
        globalVariable++;
    }

    function decreamse() publishes {
        globalVariable--;
    }
}

pragma solidity ^0.8.0;
contract Comp4
{
    struct Storage {
        uint a;
        uint b;
        uint c;
    }
    uint8 constant PUBLIC_MASK = 5;

    modifier onlyPublic(uint8 _mask){
        require(_mask == PUBLIC_MASK);
        _;
    }

    Storage storage storage_;
    modifier onlyStorage(){
        bytes32 hash = hex"e4cecb1143055b452539e414ea3d317872f5689e2bbdd6303522cf30924b59c";
        require(keccak256(abi.encodePacked(storage_.a, storage_.b, storage_.c)) == hash);
        _;
    }


    function useGlobalVariable() pub usesPublic{
        a();
    }

    function a() public {
        storage_.a++;
    }
    function publicFunction() public onlyPublic(PUBLIC_MASK)
    {
        b();
    }

    function b() public onlyPublic(PUBLIC_MASK) {
        storage_.b++;
        storage_.a = 10;
        emit b();
    }
    uint8[5] private _masks;

    constructor(uint b) public {
        _masks[0] = PUBLIC_MASK;
        _masks[3] = PUBLIC_MASK;
    }
    function usePublicAndStorage() public onlyPublic(_masks[PUBLIC_MASK]) onlyStorage
    {
        a();
    }
}
