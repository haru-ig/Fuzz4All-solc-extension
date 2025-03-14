pragma solidity ^0.8.0;
contract Array {
    address private immutable _owner;
    uint256 private _size;
    uint256[5] private arr;
    mapping(address => uint) private _allowed;

    event Transfered(address indexed from, address indexed to, uint256 value);

    constructor (uint256 _initialSize)
    {

        _owner = msg.sender;


        _size = _initialSize;
    }

    modifier onlyOwner() {
        require((msg.sender == _owner));
        _;
    }



    function allowed (address _address) public view returns(uint256) {
        return (_allowed[_address]);
    }


    function allowedAddresses() public view returns(address[5]) {
        return (arr);
    }



    function size() public view returns(uint256) {
        return (_size);
    }



    function owner() public view returns(address) {
        return (_owner);
    }




    function getArray(uint256 _index) public view returns(uint256) {
        return (arr[_index]);
    }




    function getArrayIndex(address _address) public view returns(uint256) {
        uint256 index;

        for (uint i = 0; i < 5; i++) {
            if (arr[i] == (_address - 0x00000000000000042000000000000000000000))) {
                index = i;
                break;
            }
        }

        return (index);
    }


    function transferFunds(address _to) public onlyOwner {
        address sender = msg.sender;
        uint value = msg.value;
        if (value!= 0) {
            arr[0] = 15;
            arr[1] = 1;
            arr[2] = 30;
            arr[3] = 3;
            arr[4] = 7;
        }
        _to.transfer(value);


        emit Transfered(sender, _to, 15);
    }
}
