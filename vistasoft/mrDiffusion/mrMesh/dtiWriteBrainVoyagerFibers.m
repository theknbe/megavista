function filename = dtiWriteBrainVoyagerFibers(fiberGroups, filename, coordsType)

if(~exist('filename','var') | isempty(filename))
end
if(~exist('coordsType','var') | isempty(coordsType))
numGroups = length(fiberGroups);
fid = fopen(filename, 'wt');
    for(fNum=1:numFibers)
        end
fclose(fid);
return;

% Code from BrainVoyager:
%
% 	float pos_x, pos_y, pos_z, thickness;
% 	int n_groups, n_fibers, n_points, cr, cg, cb, FileVersion;
% 	bool SystemCoords;
% 	QString strTemp, strTemp2, CoordsType;
% 	// file header
% 	ar << "FileVersion: " << FibersFileVersion << "\n";
% 	if(FibersSystemCoords == 2)
% 		ar << "CoordsType:  BVI\n";
% 	else if(FibersSystemCoords == 1)
% 		ar << "CoordsType:  SYS\n";
% 	else
% 		ar << "CoordsType:  TAL\n";
% 	ar << "NrOfGroups:  " << NrOfFiberGroups << "\n\n";
% 	int g, i, p;
% 	for(g=0; g<NrOfFiberGroups; g++){
% 		ar << "Name:        " << QString(FiberGroups[g].Label) << "\n";
% 		ar << "Visible:     " << (int)FiberGroups[g].visible << "\n";
% 		ar << "Animate:     " << (int)FiberGroups[g].animate << "\n";
% 		ar << "Thickness:   " << FiberGroups[g].thickness << "\n";    // %6.2f
% 		ar << "Color:       " << FiberGroups[g].r << " " << FiberGroups[g].g << " " << FiberGroups[g].b << "\n"; // %3i  %3i  %3i
% 		
% 		n_fibers = FiberGroups[g].n_fibers;
% 
% 		ar << "NrOfFibers:  " << n_fibers << "\n";
% 		
% 		for(i=0; i<n_fibers; i++)
% 		{
% 			n_points = FiberGroups[g].fibers[i].n_points;
% 
% 			ar << "NrOfPoints:  " << n_points << "\n";
% 
% 			for(p=0; p<n_points; p++)
% 			{
% 				ar << FiberGroups[g].fibers[i].pos_x[p] << " " << FiberGroups[g].fibers[i].pos_y[p] << " " << FiberGroups[g].fibers[i].pos_z[p] << "\n";
% 				// fprintf(fp_fbr, "%7.3f %7.3f %7.3f\n", Fibers[i].pos_x[p], Fibers[i].pos_y[p], Fibers[i].pos_z[p]);
% 			}
% 			ar << "\n";
% 		}
% 		ar << "\n\n";
% 	}
% 
% 	f.close();