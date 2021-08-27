// from https://docs.uniswap.org/protocol/V1/reference/interfaces

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface UniswapFactoryInterface {
    // Public Variables
    function exchangeTemplate() external view returns (address);

    function tokenCount() external view returns (uint256);

    // Create Exchange
    function createExchange(address token) external returns (address exchange);

    // Get Exchange and Token Info
    function getExchange(address token)
        external
        view
        returns (address exchange);

    function getToken(address exchange) external view returns (address token);

    function getTokenWithId(uint256 tokenId)
        external
        view
        returns (address token);

    // Never use
    function initializeFactory(address template) external;
}
