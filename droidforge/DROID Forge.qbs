import qbs.FileInfo

QtApplication {
    Depends { name: "Qt.widgets" }
    Depends { name: "Qt.pdfwidgets" }

    Properties {
        condition: qbs.targetOS.contains("windows")
        cpp.dynamicLibraries: [ "winmm" ]
    }

    // Current PDF viewer and MIDI are only supported on
    // Mac. Also the -framwework option (cpp.framework) is
    // only available on Mac
    Properties {
        condition: qbs.targetOS.contains("macos")

        cpp.frameworks: [
            "CoreMIDI",
            "CoreFoundation",
        ]

        cpp.cxxFlags: [ "-pedantic" ]
    }

    cpp.defines: [
        // You can make your code fail to compile if it uses deprecated APIs.
        // In order to do so, uncomment the following line.
        //"QT_DISABLE_DEPRECATED_BEFORE=0x060000" // disables all the APIs deprecated before Qt 6.0.0
    ]

    cpp.includePaths: [
        ".",
        "os",
        "patch",
        "modules",
        "patchview",
        "patchview/jackselector",
        "patchview/atomeditor",
        "patchview/circuitchooser",
        "rackview",
        "utilities",
        "main",
        "parser",
    ]

    files: [
        "main/patchsizeindicator.cpp",
        "main/patchsizeindicator.h",
        "main/preferencesdialog.cpp",
        "main/preferencesdialog.h",
        "main/windowlist.cpp",
        "main/windowlist.h",
        "modules/modulebling.cpp",
        "modules/modulebling.h",
        "modules/modulee4.cpp",
        "modules/modulee4.h",
        "modules/modulep8s8.cpp",
        "modules/modulep8s8.h",
        "os/midihost.cpp",
        "os/midihost.h",
        "os/macmidihost.cpp",
        "os/macmidihost.h",
        "os/windowsmidihost.cpp",
        "os/windowsmidihost.h",
        "main/cablestatusindicator.cpp",
        "main/cablestatusindicator.h",
        "main/colorscheme.cpp",
        "main/colorscheme.h",
        "main/dragsectionindicator.cpp",
        "main/dragsectionindicator.h",
        "main/editoractions.cpp",
        "main/editoractions.h",
        "parser/statusdump.cpp",
        "parser/statusdump.h",
        "patchview/findpanel.cpp",
        "patchview/findpanel.h",
        "patchview/rewritecablesdialog.cpp",
        "patchview/rewritecablesdialog.h",
        "patchview/sectioncommentview.cpp",
        "patchview/sectioncommentview.h",
        "rackview/smoothellipseitem.cpp",
        "rackview/smoothellipseitem.h",
        "utilities/cableselectorlineedit.cpp",
        "utilities/cableselectorlineedit.h",
        "utilities/ellipsislabel.cpp",
        "utilities/ellipsislabel.h",
        "utilities/iconbase.cpp",
        "utilities/iconbase.h",
        "main/patchoperator.cpp",
        "main/patchoperator.h",
        "main/patchproblemindicator.cpp",
        "main/patchproblemindicator.h",
        "main/patchsectionmanager.cpp",
        "main/patchsectionmanager.h",
        "main/patchview.cpp",
        "main/patchview.h",
        "main/updatehub.cpp",
        "main/updatehub.h",
        "utilities/keycapturelineedit.cpp",
        "utilities/keycapturelineedit.h",
        "main/pageselector.cpp",
        "main/pageselector.h",
        "main/usermanual.cpp",
        "main/usermanual.h",
        "main/globals.h",
        "patch/patcheditengine.cpp",
        "patch/patcheditengine.h",
        "patch/patchproblem.cpp",
        "patch/patchproblem.h",
        "patch/patchversion.cpp",
        "patch/patchversion.h",
        "main/registerlabels.cpp",
        "main/registerlabels.h",
        "main/sourcecodeeditor.cpp",
        "main/sourcecodeeditor.h",
        "patchview/atomeditor/jackvaluetabledialog.cpp",
        "patchview/atomeditor/jackvaluetabledialog.h",
        "patchview/cablecolorizer.cpp",
        "patchview/cablecolorizer.h",
        "main/clipboard.cpp",
        "main/clipboard.h",
        "main/clipboardindicator.cpp",
        "main/clipboardindicator.h",
        "patchview/framecursor.cpp",
        "patchview/framecursor.h",
        "patchview/iconmarker.cpp",
        "patchview/iconmarker.h",
        "patchview/selection.cpp",
        "patchview/selection.h",
        "rackview/animatedindicator.cpp",
        "rackview/animatedindicator.h",
        "rackview/controllerlabellingdialog.cpp",
        "rackview/controllerlabellingdialog.h",
        "rackview/dragcontrollerindicator.cpp",
        "rackview/dragcontrollerindicator.h",
        "rackview/dragregisterindicator.cpp",
        "rackview/dragregisterindicator.h",
        "main/mousedragger.cpp",
        "main/mousedragger.h",
        "patchview/patchsectiontitleview.cpp",
        "patchview/patchsectiontitleview.h",
        "rackview/registerlabelwidget.cpp",
        "rackview/registerlabelwidget.h",
        "resources.qrc",
        "main/droidfirmware.cpp",
        "main/droidfirmware.h",
        "main/main.cpp",
        "main/mainwindow.cpp",
        "main/mainwindow.h",
        "os/os.h",
        "main/patchpropertiesdialog.cpp",
        "main/patchpropertiesdialog.h",
        "main/tuning.h",
        "modules/module.cpp",
        "modules/module.h",
        "modules/moduleb32.cpp",
        "modules/moduleb32.h",
        "modules/moduleblind.cpp",
        "modules/moduleblind.h",
        "modules/modulebuilder.cpp",
        "modules/modulebuilder.h",
        "modules/moduleg8.cpp",
        "modules/moduleg8.h",
        "modules/modulem4.cpp",
        "modules/modulem4.h",
        "modules/modulemaster.cpp",
        "modules/modulemaster.h",
        "modules/modulep10.cpp",
        "modules/modulep10.h",
        "modules/modulep2b8.cpp",
        "modules/modulep2b8.h",
        "modules/modulep4b2.cpp",
        "modules/modulep4b2.h",
        "modules/modules10.cpp",
        "modules/modules10.h",
        "modules/moduleview.cpp",
        "modules/moduleview.h",
        "modules/modulex7.cpp",
        "modules/modulex7.h",
        "parser/generalparseexception.cpp",
        "parser/parseexception.h",
        "parser/patchparser.cpp",
        "parser/patchparser.h",
        "patch/atom.cpp",
        "patch/atom.h",
        "patch/atomcable.cpp",
        "patch/atomcable.h",
        "patch/atominvalid.cpp",
        "patch/atominvalid.h",
        "patch/atomnumber.cpp",
        "patch/atomnumber.h",
        "patch/atomregister.cpp",
        "patch/atomregister.h",
        "patch/circuit.cpp",
        "patch/circuit.h",
        "patch/jackassignment.cpp",
        "patch/jackassignment.h",
        "patch/jackassignmentinput.cpp",
        "patch/jackassignmentinput.h",
        "patch/jackassignmentoutput.cpp",
        "patch/jackassignmentoutput.h",
        "patch/jackassignmentunknown.cpp",
        "patch/jackassignmentunknown.h",
        "patch/patch.cpp",
        "patch/patch.h",
        "patch/patchsection.cpp",
        "patch/patchsection.h",
        "patch/registerlist.cpp",
        "patch/registerlist.h",
        "patch/registertypes.cpp",
        "patch/registertypes.h",
        "patchview/circuitview.cpp",
        "patchview/circuitview.h",
        "patchview/commentdialog.cpp",
        "patchview/commentdialog.h",
        "patchview/cursorposition.cpp",
        "patchview/cursorposition.h",
        "patchview/patchintegrationdialog.cpp",
        "patchview/patchintegrationdialog.h",
        "patchview/patchsectionview.cpp",
        "patchview/patchsectionview.h",
        "patchview/registerselector.cpp",
        "patchview/registerselector.h",
        "patchview/circuitchooser/circuitchoosedialog.cpp",
        "patchview/circuitchooser/circuitchoosedialog.h",
        "patchview/circuitchooser/circuitcollection.cpp",
        "patchview/circuitchooser/circuitcollection.h",
        "patchview/circuitchooser/circuitinfoview.cpp",
        "patchview/circuitchooser/circuitinfoview.h",
        "patchview/jackselector/jackchoosedialog.cpp",
        "patchview/jackselector/jackchoosedialog.h",
        "patchview/jackselector/jackline.cpp",
        "patchview/jackselector/jackline.h",
        "patchview/jackselector/jackselector.cpp",
        "patchview/jackselector/jackselector.h",
        "patchview/jackselector/jackcircuitview.cpp",
        "patchview/jackselector/jackcircuitview.h",
        "patchview/jackselector/jackview.cpp",
        "patchview/jackselector/jackview.h",
        "patchview/atomeditor/atomoneliner.cpp",
        "patchview/atomeditor/atomoneliner.h",
        "patchview/atomeditor/atomselector.cpp",
        "patchview/atomeditor/atomselector.h",
        "patchview/atomeditor/atomselectordialog.cpp",
        "patchview/atomeditor/atomselectordialog.h",
        "patchview/atomeditor/atomsubselector.cpp",
        "patchview/atomeditor/atomsubselector.h",
        "patchview/atomeditor/cableselector.cpp",
        "patchview/atomeditor/cableselector.h",
        "patchview/atomeditor/controlselector.cpp",
        "patchview/atomeditor/controlselector.h",
        "patchview/atomeditor/inputoutputselector.cpp",
        "patchview/atomeditor/inputoutputselector.h",
        "patchview/atomeditor/numberselector.cpp",
        "patchview/atomeditor/numberselector.h",
        "rackview/controllerchoosedialog.cpp",
        "rackview/controllerchoosedialog.h",
        "rackview/controllerselector.cpp",
        "rackview/controllerselector.h",
        "rackview/rackview.cpp",
        "rackview/rackview.h",
        "rackview/registermarker.cpp",
        "rackview/registermarker.h",
        "utilities/dialog.cpp",
        "utilities/dialog.h",
        "utilities/hintdialog.cpp",
        "utilities/hintdialog.h",
        "utilities/inputvalidationexception.cpp",
        "utilities/inputvalidationexception.h",
        "utilities/namechoosedialog.cpp",
        "utilities/namechoosedialog.h",
        "utilities/searchlineedit.cpp",
        "utilities/searchlineedit.h",
        "utilities/utilities.cpp",
        "utilities/utilities.h",
    ]

    install: true
    installDir: qbs.targetOS.contains("qnx") ? FileInfo.joinPaths("/tmp", name, "bin") : base
}
