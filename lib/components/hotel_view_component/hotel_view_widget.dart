import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HotelViewWidget extends StatelessWidget {
  final String title;
  final String pricePerRoom;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const HotelViewWidget({
    super.key,
    required this.title,
    required this.pricePerRoom,
    required this.imageUrl,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black12,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: CachedNetworkImage(
                imageUrl: imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error, size: 50, color: Theme.of(context).colorScheme.error),
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title + Price
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '$pricePerRoom / room',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                // Favorite Button
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: onFavoriteToggle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}