pragma solidity ^0.8.0;
contract Test
{
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;
    uint[] data;
    uint myindex;
    uint c;

    function getcount() public constant returns(uint) {
        return(myindex);
    }

    function insertitem(uint x) public {
        data.push(x);
        c += data.length - 1;
        myindex += 1;
        if(myindex > c) {
            myindex = 0;
        }
    }

    function remove() public {
        if(myindex > 0) {
            data[myindex-1] = data[c];
            myindex -= 1;
        }
    }
}
