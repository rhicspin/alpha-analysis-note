//#include <TROOT.h>
//#include <TColor.h>

void init_custom_palette()
{
// custom palette
Double_t r[] = {1.0, 1.0, 0.0};
Double_t g[] = {1.0, 0.0, 0.0};
Double_t b[] = {0.0, 0.0, 0.0};
Double_t s[] = {0.0, 0.66, 1.0};
TColor::CreateGradientColorTable(3, s, r, g, b, 255);
}

void init_babar_style()
{
// http://www.slac.stanford.edu/BFROOT/www/doc/workbook/root3/rootlogon.C

//..BABAR style from RooLogon.C in workdir
TStyle *babarStyle= new TStyle("BABAR","BaBar approved plots style");

// use plain black on white colors
babarStyle->SetFrameBorderMode(0);
babarStyle->SetCanvasBorderMode(0);
babarStyle->SetPadBorderMode(0);
babarStyle->SetPadColor(0);
babarStyle->SetCanvasColor(0);
babarStyle->SetStatColor(0);
//babarStyle->SetFillColor(0);

// set the paper & margin sizes
babarStyle->SetPaperSize(20,26);
babarStyle->SetPadTopMargin(0.08);
babarStyle->SetPadRightMargin(0.05);
babarStyle->SetPadBottomMargin(0.16);
babarStyle->SetPadLeftMargin(0.13);

// use large Times-Roman fonts
babarStyle->SetTextFont(132);
babarStyle->SetTextSize(0.08);
babarStyle->SetLabelFont(132,"x");
babarStyle->SetLabelFont(132,"y");
babarStyle->SetLabelFont(132,"z");
babarStyle->SetLabelSize(0.05,"x");
babarStyle->SetTitleSize(0.06,"x");
babarStyle->SetLabelSize(0.05,"y");
babarStyle->SetTitleSize(0.06,"y");
babarStyle->SetLabelSize(0.05,"z");
babarStyle->SetTitleSize(0.06,"z");

//babarStyle->SetTitleX(0.13);
//babarStyle->SetTitleY(1.0);

// use bold lines and markers
babarStyle->SetMarkerStyle(20);
babarStyle->SetMarkerSize(0.4);
babarStyle->SetHistLineWidth(1.85);
babarStyle->SetLineStyleString(2,"[12 12]"); // postscript dashes

// get rid of X error bars and y error bar caps
babarStyle->SetErrorX(0.001);

// do not display any of the standard histogram decorations
babarStyle->SetOptTitle(0);
babarStyle->SetOptStat(0);
babarStyle->SetOptFit(0);

// put tick marks on top and RHS of plots
babarStyle->SetPadTickX(1);
babarStyle->SetPadTickY(1);

/*gROOT->SetStyle("Plain");
gStyle->SetOptStat(1111111);
gStyle->SetPadTickX(1);
gStyle->SetPadTickY(1);*/
}

void rootlogon()
{
cout << endl << "Welcome to rootlogon.C" << endl;
cout << "For approved plots use: gROOT->SetStyle(\"BABAR\");"
<< endl << endl;

init_babar_style();
init_custom_palette();
}

void style_malpha()
{
   init_babar_style();
   gROOT->SetStyle("BABAR");
}
