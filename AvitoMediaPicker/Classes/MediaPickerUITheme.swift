import UIKit

public struct MediaPickerUITheme: MediaPickerRootModuleUITheme, PhotoLibraryUITheme, ImageCroppingUITheme {

    public init() {}

    // MARK: - MediaPickerRootModuleUITheme

    public var shutterButtonColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)
    public var mediaRibbonSelectionColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)

    public var removePhotoIcon = MediaPickerUITheme.imageNamed("delete")
    public var cropPhotoIcon = MediaPickerUITheme.imageNamed("crop")
    public var returnToCameraIcon = MediaPickerUITheme.imageNamed("camera")
    public var closeCameraIcon = MediaPickerUITheme.imageNamed("bt-close")
    public var flashOnIcon = MediaPickerUITheme.imageNamed("light_on")
    public var flashOffIcon = MediaPickerUITheme.imageNamed("light_off")
    public var cameraToggleIcon = MediaPickerUITheme.imageNamed("back_front")
    public var photoPeepholePlaceholder = MediaPickerUITheme.imageNamed("gallery-placeholder")

    public var cameraContinueButtonTitleFont = UIFont.systemFontOfSize(17)
    public var cameraContinueButtonTitleColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)
    public var cameraContinueButtonTitleHighlightedColor = UIColor(red: 0, green: 152.0/255, blue: 229.0/255, alpha: 1)
    public var cameraButtonsBackgroundNormalColor = UIColor.whiteColor()
    public var cameraButtonsBackgroundHighlightedColor = UIColor(white: 1, alpha: 0.6)
    public var cameraButtonsBackgroundDisabledColor = UIColor(white: 1, alpha: 0.6)
    
    public var accessDeniedTitleFont = UIFont.boldSystemFontOfSize(17)
    public var accessDeniedMessageFont = UIFont.systemFontOfSize(17)
    public var accessDeniedButtonFont = UIFont.systemFontOfSize(17)

    // MARK: - PhotoLibraryUITheme
    
    public var photoLibraryItemSelectionColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)
    
    // MARK: - ImageCroppingUITheme
    
    public var rotationIcon = MediaPickerUITheme.imageNamed("rotate")
    public var gridIcon = MediaPickerUITheme.imageNamed("grid")
    public var cropperDiscardIcon = MediaPickerUITheme.imageNamed("discard")
    public var cropperConfirmIcon = MediaPickerUITheme.imageNamed("confirm")
    public var cancelRotationButtonIcon = MediaPickerUITheme.imageNamed("close-small")
    public var cancelRotationBackgroundColor = UIColor.RGB(red: 25, green: 25, blue: 25, alpha: 1)
    public var cancelRotationTitleColor = UIColor.whiteColor()
    public var cancelRotationTitleFont = UIFont.boldSystemFontOfSize(14)

    // MARK: - Private

    private class BundleId {}

    private static func imageNamed(name: String) -> UIImage? {
        let bundle = NSBundle(forClass: BundleId.self)
        return UIImage(named: name, inBundle: bundle, compatibleWithTraitCollection: nil)
    }
}

public protocol AccessDeniedViewTheme {
    var accessDeniedTitleFont: UIFont { get }
    var accessDeniedMessageFont: UIFont { get }
    var accessDeniedButtonFont: UIFont { get }
}

public protocol MediaPickerRootModuleUITheme: AccessDeniedViewTheme {

    var shutterButtonColor: UIColor { get }
    var mediaRibbonSelectionColor: UIColor { get }
    var cameraContinueButtonTitleColor: UIColor { get }
    var cameraContinueButtonTitleHighlightedColor: UIColor { get }
    var cameraButtonsBackgroundNormalColor: UIColor { get }
    var cameraButtonsBackgroundHighlightedColor: UIColor { get }
    var cameraButtonsBackgroundDisabledColor: UIColor { get }

    var removePhotoIcon: UIImage? { get }
    var cropPhotoIcon: UIImage? { get }
    var returnToCameraIcon: UIImage? { get }
    var closeCameraIcon: UIImage? { get }
    var flashOnIcon: UIImage? { get }
    var flashOffIcon: UIImage? { get }
    var cameraToggleIcon: UIImage? { get }
    var photoPeepholePlaceholder: UIImage? { get }
    

    var cameraContinueButtonTitleFont: UIFont { get }
}

public protocol PhotoLibraryUITheme: AccessDeniedViewTheme {
    var photoLibraryItemSelectionColor: UIColor { get }
}

public protocol ImageCroppingUITheme {
    
    var rotationIcon: UIImage? { get }
    var gridIcon: UIImage? { get }
    var cropperDiscardIcon: UIImage? { get }
    var cropperConfirmIcon: UIImage? { get }
    
    var cancelRotationBackgroundColor: UIColor { get }
    var cancelRotationTitleColor: UIColor { get }
    var cancelRotationTitleFont: UIFont { get }
    var cancelRotationButtonIcon: UIImage? { get }
}