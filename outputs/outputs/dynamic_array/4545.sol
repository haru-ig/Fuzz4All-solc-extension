pragma solidity ^0.8.0;
contract ERC677 {
    struct TransferBatchData {
        uint256 id;
        address from;
        address to;
        uint256 amount0;
        uint256 amount1;
        bytes data;
    }

    event TransferBatch(
        uint256 indexed id,
        address indexed from,
        address indexed to,
        uint256 [] tokenIds
    );

    function emitTransferBatch(
        uint256[] calldata tokenIds,
        address from,
        address to
    ) external;

    function transferBatch(
        uint256[] calldata ids,
        address[] calldata to
    ) external {
        emitTransferBatch(tokens, from, to);
    }

    function transferBatch(
        uint256[] calldata ids,
        address to
    ) external {
        emitTransferBatch(ids, address(0), to);
    }

    function transferBatch(
        address[] calldata from,
        address[] calldata to,
        uint[] calldata amounts
    ) external {
        emitTransferBatch(ids, from, to);
    }

    function transferBatch(
        address[] calldata from,
        address[] calldata to,
        uint256[] calldata amounts
    ) external {
        emitTransferBatch(ids, from, to);
    }

    function transferBatch(
        uint256[] calldata ids,
        address from,
        address to
    ) external {
        emitTransferBatch(ids, from, to);
    }

    function transferBatch(
        uint256[] calldata ids,
        address from,
        address to,
        uint256 amount0,
        uint256 amount1
    ) external {
        emitTransferBatch(ids, from, to);
    }

    function transferBatch(
        address[] calldata from,
        address[] calldata to,
        uint256 amount0,
        uint256 amount1
    ) external {
        emitTransferBatch(ids, from, to);
    }

    function transferBatch(
        address[] calldata from,
        address[] calldata to,
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    ) external {
        emitTransferBatch(ids, from, to);
    }

    function transferBatch(
        uint256[] calldata ids,
        address from,
        address to,
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    ) external {
        emitTransferBatch(ids, from, to);
    }
}
