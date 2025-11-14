import { AdvancedRealTimeChart } from "@/components/common/trading-widget";
import AssetList from "@/components/user/AssetList";
import UserTransactions from "@/components/user/common/user-transactions";
import ErrorBoundary from "@/components/user/ErrorBoundary";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "User Dashboard",
};
export default async function UserHome() {
  return (
    <>
      <ErrorBoundary>
        <AssetList />
        <div className="h-96">
          <AdvancedRealTimeChart autosize />
        </div>
        <UserTransactions />
      </ErrorBoundary>
    </>
  );
}
