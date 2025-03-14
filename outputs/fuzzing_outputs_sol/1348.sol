pragma solidity ^0.8.0;
contract Contract {
    function moderateCaller_06()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            0,
            moderateCaller()
        );
    }
    function moderateCaller_07()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            1,
            moderateCaller()
        );
    }
    function moderateCaller_08()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            2,
            moderateCaller()
        );
    }
    function moderateCaller_09()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            3,
            moderateCaller()
        );
    }
    function moderateCaller() public view returns (address) {
        uint gas_limit = 6e7;
        uint gas_used = now;

        address payable self = msg.sender;

        uint self_balance = self.balance;
        uint self_balance_after_gaslimit = self.balance.sub(gas_limit);

        uint moderate_balance = self.payableCallFrom_5(self_balance, gas_limit);
        uint moderate_balance_after_gaslimit = self.payableCallFrom_5(
            self_balance_after_gaslimit,
            gas_limit
        );

        require(
            self_balance ==
                self.balance.add(self.callFrom_3(gas_used, gas_limit).value(gas_limit)())
        );
        require(
            self_balance_after_gaslimit ==
                self.balance.add(self.payableCallFrom_5(gas_used, gas_limit))
        );
        require(
            self.balance ==
                self.balance.add(self.callFrom_3(gas_used, gas_limit))
        );

        uint fee = self.balance.sub(moderate_balance).divide(2).mul(1e26);
        self.transfer(fee + moderate_balance);

        return (fee, moderate_balance);
    }
    function callFrom_3(uint gas_used, uint gas_limit) public payable returns (uint) {
        return gas_limit.sub(gas_used);
    }
    function payableCallFrom_5(uint gas_used, uint gas_limit) public
