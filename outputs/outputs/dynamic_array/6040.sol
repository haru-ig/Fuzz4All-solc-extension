pragma solidity ^0.8.0;
contract Test {
    constructor () public {
        data.push(1);
        data.push(2);
    }
    struct DataItem {
        uint id;
        bytes4 func;
        uint data;
        uint cost;
    }
    mapping (address => DataItem[]) nonProfitData;
    uint payable nonProfitCost;
    function sendNonProfit (address _to, address _amount, bytes4 _func, uint _data, uint _id ) public payable {
        DataItem[] storage _nonProfitData = nonProfitData[_to];
        require(_to!= address(0), "Payout is to nil");
        require(_id > 0, "Must have positive id");
        require(_id <= _nonProfitData.length, "Id too high");
        require(_amount.add(msg.value) > nonProfitCost, "msg.value is not sufficient for this cost");


        nonProfitCost = _amount.add(msg.value);

        nonProfitData[_to].push(DataItem(_id, _func, _data, _amount.add(msg.value)));
    }
}
