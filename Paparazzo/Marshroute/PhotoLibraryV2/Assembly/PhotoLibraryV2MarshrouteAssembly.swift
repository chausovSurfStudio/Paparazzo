import UIKit
import Marshroute

public protocol PhotoLibraryV2MarshrouteAssembly: class {
    func module(
        mediaPickerData: MediaPickerData,
        selectedItems: [PhotoLibraryItem],
        maxSelectedItemsCount: Int?,
        routerSeed: RouterSeed,
        isMetalEnabled: Bool,
        configure: (PhotoLibraryV2Module) -> ())
        -> UIViewController
}

public extension PhotoLibraryV2MarshrouteAssembly {
    func module(
        mediaPickerData: MediaPickerData,
        selectedItems: [PhotoLibraryItem],
        maxSelectedItemsCount: Int?,
        routerSeed: RouterSeed,
        configure: (PhotoLibraryV2Module) -> ())
        -> UIViewController {
            return module(
                mediaPickerData: mediaPickerData,
                selectedItems: selectedItems,
                maxSelectedItemsCount: maxSelectedItemsCount,
                routerSeed: routerSeed,
                isMetalEnabled: false,
                configure: configure
            )
    }
}

public protocol PhotoLibraryV2MarshrouteAssemblyFactory: class {
    func photoLibraryV2Assembly() -> PhotoLibraryV2MarshrouteAssembly
}
