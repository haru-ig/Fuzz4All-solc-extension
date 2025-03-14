pragma solidity ^0.8.0;
contract EquivalentSemantic {


    function () public payable
    {
        revert("Not supported");
    }

    modifier nonReentrant() {
        _;
    }



    fallback() external nonReentrant
    {
        revert("Fallback function relied on");
    }


    function call() public nonReentrant {
        uint256 amount = msg.value;

        payable(msg.sender).transfer(amount);
    }

    contract A
    {
        function call() public payable external nonReentrant
        {
            (address toAddress,,,,) = msg.data;
            (,,,) = payable(toAddress).call.value(msg.value)();
        }
    }


    function send() public payable
    {
        (uint256,,,) = msg.data;
        msg.sender.call.value(uint256(msg.value))();
    }


    function callToSelf() public
    {


        caller.call();
    }


    receive() external nonReentrant
    {

    }


}
