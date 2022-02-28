# home_synology

## Procedure

### Step1: copy on the Synology server using rsync

For example from another Synology or a USB drive

```bash
rsync -zvh  /volumeUSB1/usbshare/BILDER\ OG\ VIDEOER/BILDER/2016/ /volume/volume1/homes/admin_srv01/buffer_photos/
```

### Step2: Sort the photos

The [sortphotos](https://github.com/andrewning/sortphotos) Python scripts were used to generate year and month based folder structure, and renaming the images.

Connnect to the Synology using ssh from the Linnux on Windows : 
```bash
ssh admin_srv01@192.168.0.200
```
Once connected to the server, use the following command to transfer the images from the folder /volume1/photo/test to its final folder: 
```bash
python /var/services/homes/admin_srv01/code/sortphotos/src/sortphotos.py --sort %Y/%m-%b --use-only-tags EXIF:CreateDate --rename %Y_%m%d_%H%M%S /volume1/photo/test/ /volume1/photo/
```



