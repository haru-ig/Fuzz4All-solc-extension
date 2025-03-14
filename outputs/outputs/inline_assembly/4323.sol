pragma solidity ^0.8.0;

struct Record {
    address user;
    uint amount;
}
struct CallData {
    uint value;
    Record[] data;
    bool isFinished;
}
contract MutatedSolidityCallExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 50;
        c += Z;
        d += Z + 150;
        e += Z;
        f[msg.sender] = 503;
    }

    function transfer_From_to_call_data(address _from, address _to, Record[] memory data, uint _value, bool _isFinished) public {
        records[_from] += _value;
        records[_to].push(records[_from + 1]);
        records[_from + 1] = Record(address(_from), _value);
        records[_to].push(data[0]);
        if (_isFinished) {
          records[_to].push(records[_from + 2]);
        } else {
            records[_to].push(records[_from + 2]);
        }
        records[_from + 2] = Record(address(_to), _value);

    }

    function finish_With_call_data(Record[] memory data) public {
        require(records[msg.sender].length > 0);
        for (uint i = 0; i < records[msg.sender].length; i++) {
            Record memory r = records[msg.sender][i];
            if (msg.sender!= r.user) {
                records[r.user].push(r.amount);
            } else {
                records[r.user].push(r.amount);
            }
            if (r.amount == 0) {
                records[msg.sender].splice(i, 1);
                i--;
            }
        }
        for (uint i = 0; i < data.length; i++) {
            for (uint j = 0; j < data[i].amount; j++) {
                records[data[i].user].push(data[i].amount);
            }
            records[data[i].user].push(0);
        }
        records[msg.sender] = records[msg.sender].filter(a >
